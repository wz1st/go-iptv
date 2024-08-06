.class final Lcom/b/a/i/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:[B


# direct methods
.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/i/a$b;->c:[B

    iput p2, p0, Lcom/b/a/i/a$b;->a:I

    iput p3, p0, Lcom/b/a/i/a$b;->b:I

    return-void
.end method
