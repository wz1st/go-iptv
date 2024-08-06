.class public Lcom/b/a/c/d/a/h;
.super Lcom/b/a/c/d/a/e;


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    sget-object v1, Lcom/b/a/c/d/a/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/a/h;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/c/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/b/a/c/d/a/u;->c(Lcom/b/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Lcom/b/a/c/d/a/h;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/b/a/c/d/a/h;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
