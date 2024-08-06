.class final Landroid/support/v17/leanback/widget/i$a;
.super Landroid/support/v17/leanback/widget/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private f:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/j$a;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/i$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/i$a;->f:I

    invoke-static {p1, p0, v0}, Landroid/support/v17/leanback/widget/k;->a(Landroid/view/View;Landroid/support/v17/leanback/widget/j$a;I)I

    move-result v0

    return v0
.end method
