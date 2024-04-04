from splat.segtypes.n64.mtx import N64SegMtx
import struct
import decimal


class N64SegFltmtx(N64SegMtx):
    """
    A variant of Mtx segment that outputs 4x4 float matrix enclosed in RDP_MATRIX()
    """

    def get_body(self) -> str:
        lines = []
        lines.append("RDP_MATRIX(")

        mtx = struct.unpack(">16h16H", self.data)

        # Weird stuff to match what the RDP_MATRIX macro calculates back
        decimal.getcontext().rounding = decimal.ROUND_UP
        float_mtx = tuple(decimal.Decimal((whole << 16) | frac) / 65536 for whole, frac in zip(mtx[:16], mtx[16:]))

        Ax, Ay, Az, Aw, Bx, By, Bz, Bw, Cx, Cy, Cz, Cw, Dx, Dy, Dz, Dw = float_mtx
        lines.append(f"    {Ax:>11.6f}, {Bx:>11.6f}, {Cx:>11.6f}, {Dx:>11.6f},")
        lines.append(f"    {Ay:>11.6f}, {By:>11.6f}, {Cy:>11.6f}, {Dy:>11.6f},")
        lines.append(f"    {Az:>11.6f}, {Bz:>11.6f}, {Cz:>11.6f}, {Dz:>11.6f},")
        lines.append(f"    {Aw:>11.6f}, {Bw:>11.6f}, {Cw:>11.6f}, {Dw:>11.6f}")

        lines.append(")")
        return lines
