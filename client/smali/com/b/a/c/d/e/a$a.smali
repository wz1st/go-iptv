.class Lcom/b/a/c/d/e/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/b/a/b/a$a;Lcom/b/a/b/c;Ljava/nio/ByteBuffer;I)Lcom/b/a/b/a;
    .locals 1

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/b/a/b/e;-><init>(Lcom/b/a/b/a$a;Lcom/b/a/b/c;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
