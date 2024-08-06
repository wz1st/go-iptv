.class Landroid/support/v17/leanback/widget/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v17/leanback/widget/a;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/a$1;->a:Landroid/support/v17/leanback/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a$1;->a:Landroid/support/v17/leanback/widget/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/a;->a:Landroid/support/v17/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/f;->a(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a$1;->a:Landroid/support/v17/leanback/widget/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/a;->b:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/a$1;->a:Landroid/support/v17/leanback/widget/a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/a;->b:Landroid/support/v7/widget/RecyclerView$q;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_0
    return-void
.end method
