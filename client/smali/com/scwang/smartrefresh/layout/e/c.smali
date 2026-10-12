.class public abstract Lcom/scwang/smartrefresh/layout/e/c;
.super Lcom/scwang/smartrefresh/layout/e/b;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scwang/smartrefresh/layout/e/c;",
        ">",
        "Lcom/scwang/smartrefresh/layout/e/b;",
        "Lcom/scwang/smartrefresh/layout/a/g;"
    }
.end annotation


# static fields
.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field protected A:Lcom/scwang/smartrefresh/layout/e/d;

.field protected B:Z

.field protected C:Z

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/ImageView;

.field protected u:Landroid/widget/ImageView;

.field protected v:Lcom/scwang/smartrefresh/layout/a/h;

.field protected z:Lcom/scwang/smartrefresh/layout/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_title:I

    sput v0, Lcom/scwang/smartrefresh/layout/e/c;->p:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_arrow:I

    sput v0, Lcom/scwang/smartrefresh/layout/e/c;->q:I

    sget v0, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_progress:I

    sput v0, Lcom/scwang/smartrefresh/layout/e/c;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->E:I

    iput v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    iput v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    sget-object v0, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->x:Lcom/scwang/smartrefresh/layout/b/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 6

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->E:I

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public a(I)Lcom/scwang/smartrefresh/layout/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->C:Z

    iput p1, p0, Lcom/scwang/smartrefresh/layout/e/c;->D:I

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->v:Lcom/scwang/smartrefresh/layout/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->v:Lcom/scwang/smartrefresh/layout/a/h;

    invoke-interface {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/a/g;I)Lcom/scwang/smartrefresh/layout/a/h;

    :cond_0
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/e/c;->b()Lcom/scwang/smartrefresh/layout/e/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/h;II)V
    .locals 2

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/e/c;->v:Lcom/scwang/smartrefresh/layout/a/h;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->v:Lcom/scwang/smartrefresh/layout/a/h;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->D:I

    invoke-interface {v0, p0, v1}, Lcom/scwang/smartrefresh/layout/a/h;->a(Lcom/scwang/smartrefresh/layout/a/g;I)Lcom/scwang/smartrefresh/layout/a/h;

    return-void
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/e/c;->b(Lcom/scwang/smartrefresh/layout/a/i;II)V

    return-void
.end method

.method protected b()Lcom/scwang/smartrefresh/layout/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public b(I)Lcom/scwang/smartrefresh/layout/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->B:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->z:Lcom/scwang/smartrefresh/layout/e/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->z:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/e/d;->a(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->z:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->A:Lcom/scwang/smartrefresh/layout/e/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->A:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/e/d;->a(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->A:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/e/c;->b()Lcom/scwang/smartrefresh/layout/e/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/scwang/smartrefresh/layout/a/i;II)V
    .locals 4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x470ca000    # 36000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/e/b;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    if-nez v0, :cond_4

    invoke-static {v4}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/e/b;->onMeasure(II)V

    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    if-ge v2, v1, :cond_3

    iput v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->H:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/scwang/smartrefresh/layout/e/c;->G:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    array-length v1, p1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->C:Z

    if-nez v1, :cond_0

    aget v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/e/c;->a(I)Lcom/scwang/smartrefresh/layout/e/c;

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->C:Z

    :cond_0
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/e/c;->B:Z

    if-nez v1, :cond_1

    array-length v1, p1

    if-le v1, v3, :cond_2

    aget v0, p1, v3

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/e/c;->b(I)Lcom/scwang/smartrefresh/layout/e/c;

    :goto_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/e/c;->B:Z

    :cond_1
    return-void

    :cond_2
    aget v1, p1, v2

    if-ne v1, v0, :cond_3

    const v0, -0x99999a

    :cond_3
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/e/c;->b(I)Lcom/scwang/smartrefresh/layout/e/c;

    goto :goto_0
.end method
