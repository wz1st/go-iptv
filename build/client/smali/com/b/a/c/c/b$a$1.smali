.class Lcom/b/a/c/c/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/c/b$a;->a(Lcom/b/a/c/c/r;)Lcom/b/a/c/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/b$b",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/c/b$a;


# direct methods
.method constructor <init>(Lcom/b/a/c/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/c/b$a$1;->a:Lcom/b/a/c/c/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public a([B)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/c/c/b$a$1;->a([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
