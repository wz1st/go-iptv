.class final La/a/c/ad;
.super Ljava/util/zip/Inflater;


# instance fields
.field final synthetic a:La/a/c/ab;


# direct methods
.method constructor <init>(La/a/c/ab;)V
    .locals 0

    iput-object p1, p0, La/a/c/ad;->a:La/a/c/ab;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/c/ad;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, La/a/c/l;->a:[B

    invoke-virtual {p0, v0}, La/a/c/ad;->setDictionary([B)V

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0
.end method
