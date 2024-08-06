.class public Landroid/support/v7/widget/GridLayoutManager$b;
.super Landroid/support/v7/widget/RecyclerView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:I

    return v0
.end method
