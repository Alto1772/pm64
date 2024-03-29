from splat.segtypes.n64.light import N64SegLight


class N64SegLight_common(N64SegLight):
    def format_sym_name(self, sym):
        return f"N({sym.name[7:]})"
