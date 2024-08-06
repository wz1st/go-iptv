.class public Landroid/support/constraint/d$a;
.super Landroid/support/constraint/ConstraintLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public an:F

.field public ao:Z

.field public ap:F

.field public aq:F

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F

.field public az:F


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$a;-><init>(II)V

    iput v2, p0, Landroid/support/constraint/d$a;->an:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/d$a;->ao:Z

    iput v1, p0, Landroid/support/constraint/d$a;->ap:F

    iput v1, p0, Landroid/support/constraint/d$a;->aq:F

    iput v1, p0, Landroid/support/constraint/d$a;->ar:F

    iput v1, p0, Landroid/support/constraint/d$a;->as:F

    iput v2, p0, Landroid/support/constraint/d$a;->at:F

    iput v2, p0, Landroid/support/constraint/d$a;->au:F

    iput v1, p0, Landroid/support/constraint/d$a;->av:F

    iput v1, p0, Landroid/support/constraint/d$a;->aw:F

    iput v1, p0, Landroid/support/constraint/d$a;->ax:F

    iput v1, p0, Landroid/support/constraint/d$a;->ay:F

    iput v1, p0, Landroid/support/constraint/d$a;->az:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/support/constraint/d$a;->an:F

    iput-boolean v0, p0, Landroid/support/constraint/d$a;->ao:Z

    iput v1, p0, Landroid/support/constraint/d$a;->ap:F

    iput v1, p0, Landroid/support/constraint/d$a;->aq:F

    iput v1, p0, Landroid/support/constraint/d$a;->ar:F

    iput v1, p0, Landroid/support/constraint/d$a;->as:F

    iput v2, p0, Landroid/support/constraint/d$a;->at:F

    iput v2, p0, Landroid/support/constraint/d$a;->au:F

    iput v1, p0, Landroid/support/constraint/d$a;->av:F

    iput v1, p0, Landroid/support/constraint/d$a;->aw:F

    iput v1, p0, Landroid/support/constraint/d$a;->ax:F

    iput v1, p0, Landroid/support/constraint/d$a;->ay:F

    iput v1, p0, Landroid/support/constraint/d$a;->az:F

    sget-object v1, Landroid/support/constraint/f$b;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_c

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_alpha:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroid/support/constraint/d$a;->an:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->an:F

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_elevation:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroid/support/constraint/d$a;->ap:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->ap:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/constraint/d$a;->ao:Z

    goto :goto_1

    :cond_2
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_rotationX:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroid/support/constraint/d$a;->ar:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->ar:F

    goto :goto_1

    :cond_3
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_rotationY:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroid/support/constraint/d$a;->as:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->as:F

    goto :goto_1

    :cond_4
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_rotation:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Landroid/support/constraint/d$a;->aq:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->aq:F

    goto :goto_1

    :cond_5
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_scaleX:I

    if-ne v3, v4, :cond_6

    iget v4, p0, Landroid/support/constraint/d$a;->at:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->at:F

    goto :goto_1

    :cond_6
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_scaleY:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroid/support/constraint/d$a;->au:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->au:F

    goto :goto_1

    :cond_7
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_transformPivotX:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroid/support/constraint/d$a;->av:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->av:F

    goto :goto_1

    :cond_8
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_transformPivotY:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroid/support/constraint/d$a;->aw:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->aw:F

    goto :goto_1

    :cond_9
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_translationX:I

    if-ne v3, v4, :cond_a

    iget v4, p0, Landroid/support/constraint/d$a;->ax:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->ax:F

    goto :goto_1

    :cond_a
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_translationY:I

    if-ne v3, v4, :cond_b

    iget v4, p0, Landroid/support/constraint/d$a;->ay:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->ay:F

    goto/16 :goto_1

    :cond_b
    sget v4, Landroid/support/constraint/f$b;->ConstraintSet_android_translationZ:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroid/support/constraint/d$a;->az:F

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/d$a;->ax:F

    goto/16 :goto_1

    :cond_c
    return-void
.end method
