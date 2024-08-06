.class Lcom/b/a/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/n;


# direct methods
.method constructor <init>(Lcom/b/a/d/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/j$a;->a:Lcom/b/a/d/n;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/j$a;->a:Lcom/b/a/d/n;

    invoke-virtual {v0}, Lcom/b/a/d/n;->d()V

    :cond_0
    return-void
.end method
