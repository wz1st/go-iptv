.class public Lcom/g/a/e/a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/g/a/e/a;->b:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/g/a/e/a;->c:I

    sget v0, Lcom/g/a/h;->b:I

    iput v0, p0, Lcom/g/a/e/a;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lcom/g/a/e/a;->b:I

    invoke-virtual {p0, v0}, Lcom/g/a/e/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lcom/g/a/e/a;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/g/a/e/a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    long-to-int v0, p1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/g/a/e/a;->b:I

    return-void
.end method
