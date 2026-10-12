.class Lcom/b/a/d/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/d/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)Lcom/b/a/j;
    .locals 1

    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/b/a/j;-><init>(Lcom/b/a/c;Lcom/b/a/d/h;Lcom/b/a/d/m;Landroid/content/Context;)V

    return-object v0
.end method
