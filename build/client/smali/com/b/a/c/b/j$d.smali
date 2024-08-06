.class public Lcom/b/a/c/b/j$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/k",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/g/f;


# direct methods
.method constructor <init>(Lcom/b/a/g/f;Lcom/b/a/c/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/f;",
            "Lcom/b/a/c/b/k",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/j$d;->b:Lcom/b/a/g/f;

    iput-object p2, p0, Lcom/b/a/c/b/j$d;->a:Lcom/b/a/c/b/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/j$d;->a:Lcom/b/a/c/b/k;

    iget-object v1, p0, Lcom/b/a/c/b/j$d;->b:Lcom/b/a/g/f;

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/k;->b(Lcom/b/a/g/f;)V

    return-void
.end method
