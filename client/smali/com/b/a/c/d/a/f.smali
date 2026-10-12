.class public Lcom/b/a/c/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d/a/k;


# direct methods
.method public constructor <init>(Lcom/b/a/c/d/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/f;->a:Lcom/b/a/c/d/a/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/d/a/f;->a(Ljava/nio/ByteBuffer;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/i/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/d/a/f;->a:Lcom/b/a/c/d/a/k;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/b/a/c/d/a/k;->a(Ljava/io/InputStream;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/a/f;->a(Ljava/nio/ByteBuffer;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/b/a/c/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/f;->a:Lcom/b/a/c/d/a/k;

    invoke-virtual {v0, p1}, Lcom/b/a/c/d/a/k;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
