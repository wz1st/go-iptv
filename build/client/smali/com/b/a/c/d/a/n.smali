.class public final Lcom/b/a/c/d/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lcom/b/a/c/b/a/b;)I
    .locals 3

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/b/a/c/f$a;
    .locals 1

    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/b/a/c/f$a;
    .locals 1

    sget-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    return-object v0
.end method
