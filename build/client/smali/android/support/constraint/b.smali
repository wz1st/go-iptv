.class public abstract Landroid/support/constraint/b;
.super Landroid/view/View;


# instance fields
.field protected a:[I

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Landroid/support/constraint/a/a/j;

.field protected e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/b;->a:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/b;->e:Z

    iput-object p1, p0, Landroid/support/constraint/b;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/constraint/b;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-class v0, Landroid/support/constraint/f$a;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    iget-object v4, p0, Landroid/support/constraint/b;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/support/constraint/b;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/constraint/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/constraint/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/ConstraintLayout;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, v5}, Landroid/support/constraint/b;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_1

    :cond_3
    const-string v0, "ConstraintHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find id of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private setIds(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/b;->d:Landroid/support/constraint/a/a/j;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$a;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v1, p0, Landroid/support/constraint/b;->d:Landroid/support/constraint/a/a/j;

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/a/a/f;

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/ConstraintLayout;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/b;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/support/constraint/b;->setIds(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b;->d:Landroid/support/constraint/a/a/j;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/b;->d:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/j;->J()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/b;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/support/constraint/b;->d:Landroid/support/constraint/a/a/j;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/f;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/f$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroid/support/constraint/f$b;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/support/constraint/b;->f:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/constraint/b;->f:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/support/constraint/b;->setIds(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/b;->a:[I

    iget v1, p0, Landroid/support/constraint/b;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/constraint/b;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/support/constraint/b;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/b;->b:I

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/b;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/b;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/b;->a:[I

    iget-object v1, p0, Landroid/support/constraint/b;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/b;->a:[I

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/b;->a:[I

    iget v1, p0, Landroid/support/constraint/b;->b:I

    aput p1, v0, v1

    iget v0, p0, Landroid/support/constraint/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/b;->b:I

    return-void
.end method
