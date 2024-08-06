.class Landroid/support/v7/widget/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/h;

.field private c:I

.field private d:Landroid/support/v7/widget/at;

.field private e:Landroid/support/v7/widget/at;

.field private f:Landroid/support/v7/widget/at;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    iput-object p1, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/h;

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/at;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v7/widget/at;

    invoke-direct {v1}, Landroid/support/v7/widget/at;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/at;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/at;

    invoke-virtual {v1}, Landroid/support/v7/widget/at;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/f/t;->n(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Landroid/support/v7/widget/at;->d:Z

    iput-object v2, v1, Landroid/support/v7/widget/at;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/f/t;->o(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-boolean v0, v1, Landroid/support/v7/widget/at;->c:Z

    iput-object v2, v1, Landroid/support/v7/widget/at;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v2, v1, Landroid/support/v7/widget/at;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/widget/at;->c:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;[I)V

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    const/16 v3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/widget/g;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/h;

    iget-object v1, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0}, Landroid/support/v7/widget/at;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    iput-object p1, v0, Landroid/support/v7/widget/at;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0}, Landroid/support/v7/widget/at;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    iput-object p1, v0, Landroid/support/v7/widget/at;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/av;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/h;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/g;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/av;->a(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/v;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/f/t;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/av;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->a()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    iget-object v0, v0, Landroid/support/v7/widget/at;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0}, Landroid/support/v7/widget/at;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    iput-object p1, v0, Landroid/support/v7/widget/at;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/at;->d:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    goto :goto_0
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/g;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/at;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;[I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/at;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;[I)V

    goto :goto_0
.end method
