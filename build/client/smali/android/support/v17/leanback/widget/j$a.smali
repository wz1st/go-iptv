.class public Landroid/support/v17/leanback/widget/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:F

.field e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/widget/j$a;->a:I

    iput v0, p0, Landroid/support/v17/leanback/widget/j$a;->b:I

    iput v1, p0, Landroid/support/v17/leanback/widget/j$a;->c:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/j$a;->d:F

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/j$a;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->c:I

    return v0
.end method

.method public final a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/j$a;->d:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/j$a;->c:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/j$a;->e:Z

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->d:F

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/j$a;->a:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->a:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/j$a;->a:I

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/j$a;->f:Z

    return v0
.end method
