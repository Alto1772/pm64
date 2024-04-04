from splat.segtypes.common.generatedcode import CommonSegGeneratedCode
from splat.util import log
from typing import Union, Dict, List, Optional
import struct
import decimal


class N64SegFragmtx(CommonSegGeneratedCode):
    def is_array(self) -> bool:
        return True

    def get_size_per(self) -> int:
        return 0x40

    def get_data_type(self) -> str:
        return "Mtx"

    def out_type(self) -> str:
        return "fragmtx"

    def check_length(self):
        segment_length = len(self.data)

        if segment_length % 64 != 0:
            log.error(
                f"Error: Fragment Matrices (fragmtx) segment {self.name} length ({segment_length}) is not a multiple of 64!"
            )

    def get_body(self) -> List[str]:
        lines = []

        for mtx in struct.iter_unpack(">16h16H", self.data):
            lines.append("    RDP_MATRIX(")

            # Weird stuff to match what the RDP_MATRIX macro calculates back
            decimal.getcontext().rounding = decimal.ROUND_UP
            float_mtx = tuple(decimal.Decimal((whole << 16) | frac) / 65536 for whole, frac in zip(mtx[:16], mtx[16:]))

            Ax, Ay, Az, Aw, Bx, By, Bz, Bw, Cx, Cy, Cz, Cw, Dx, Dy, Dz, Dw = float_mtx
            lines.append(f"      {Ax:>11.6f}, {Bx:>11.6f}, {Cx:>11.6f}, {Dx:>11.6f},")
            lines.append(f"      {Ay:>11.6f}, {By:>11.6f}, {Cy:>11.6f}, {Dy:>11.6f},")
            lines.append(f"      {Az:>11.6f}, {Bz:>11.6f}, {Cz:>11.6f}, {Dz:>11.6f},")
            lines.append(f"      {Aw:>11.6f}, {Bw:>11.6f}, {Cw:>11.6f}, {Dw:>11.6f}")

            lines.append("    ),")

        return lines

    @staticmethod
    def estimate_size(yaml: Union[Dict, List]) -> Optional[int]:
        if isinstance(yaml, dict) and "length" in yaml:
            return yaml["length"] * 0x40
        return None
