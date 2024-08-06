.class Landroid/support/v7/widget/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/at;

.field private c:Landroid/support/v7/widget/at;

.field private d:Landroid/support/v7/widget/at;

.field private e:Landroid/support/v7/widget/at;

.field private f:Landroid/support/v7/widget/at;

.field private g:Landroid/support/v7/widget/at;

.field private final h:Landroid/support/v7/widget/r;

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/p;->i:I

    iput-object p1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;
    .locals 3

    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0}, Landroid/support/v7/widget/at;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/at;->d:Z

    iput-object v1, v0, Landroid/support/v7/widget/at;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/support/v7/widget/av;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_textStyle:I

    iget v3, p0, Landroid/support/v7/widget/p;->i:I

    invoke-virtual {p2, v0, v3}, Landroid/support/v7/widget/av;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->i:I

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Landroid/support/v7/widget/p$1;

    invoke-direct {v4, p0, v3}, Landroid/support/v7/widget/p$1;-><init>(Landroid/support/v7/widget/p;Ljava/lang/ref/WeakReference;)V

    :try_start_0
    iget v3, p0, Landroid/support/v7/widget/p;->i:I

    invoke-virtual {p2, v0, v3, v4}, Landroid/support/v7/widget/av;->a(IILandroid/support/v4/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    iget-object v3, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    if-nez v3, :cond_4

    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/p;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/av;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/support/v7/widget/p;->i:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    :cond_2
    :goto_3
    return-void

    :cond_3
    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_fontFamily:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroid/support/v7/widget/p;->k:Z

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/av;->a(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    goto :goto_3

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    goto :goto_3

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;[I)V

    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/r;->a(IF)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/at;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->e:Landroid/support/v7/widget/at;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/at;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/at;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    aget-object v1, v0, v4

    iget-object v2, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/at;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/p;->e:Landroid/support/v7/widget/at;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/p;->f:Landroid/support/v7/widget/at;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/p;->g:Landroid/support/v7/widget/at;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/p;->f:Landroid/support/v7/widget/at;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/widget/p;->g:Landroid/support/v7/widget/at;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/p;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/at;)V

    :cond_3
    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    return-void
.end method

.method a(IF)V
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/p;->b(IF)V

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/r;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/av;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/av;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/p;->a(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/av;->e(II)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/av;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/p;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v12, 0x17

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/a$j;->AppCompatTextHelper:[I

    invoke-static {v8, p1, v3, p2, v2}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/av;

    move-result-object v3

    sget v4, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v3, v4, v11}, Landroid/support/v7/widget/av;->g(II)I

    move-result v4

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/at;

    :cond_0
    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/at;

    :cond_1
    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/at;

    :cond_2
    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/p;->e:Landroid/support/v7/widget/at;

    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_5

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/p;->f:Landroid/support/v7/widget/at;

    :cond_4
    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/av;->g(II)I

    move-result v6

    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/at;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/p;->g:Landroid/support/v7/widget/at;

    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/av;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v9, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eq v4, v11, :cond_1a

    sget-object v0, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {v8, v4, v0}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/av;

    move-result-object v10

    if-nez v9, :cond_19

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v0, v2}, Landroid/support/v7/widget/av;->a(IZ)Z

    move-result v3

    move v0, v1

    :goto_0
    invoke-direct {p0, v8, v10}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/av;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v12, :cond_18

    sget v4, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v4

    if-eqz v4, :cond_17

    sget v4, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :goto_1
    sget v6, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v6

    if-eqz v6, :cond_16

    sget v6, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_2
    sget v7, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v7

    if-eqz v7, :cond_15

    sget v5, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v5}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v7, v5

    :goto_3
    invoke-virtual {v10}, Landroid/support/v7/widget/av;->a()V

    :goto_4
    sget-object v5, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {v8, p1, v5, p2, v2}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/av;

    move-result-object v5

    if-nez v9, :cond_6

    sget v10, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v10

    if-eqz v10, :cond_6

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0, v2}, Landroid/support/v7/widget/av;->a(IZ)Z

    move-result v3

    move v0, v1

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v12, :cond_9

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_7
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v1, v10, :cond_a

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/av;->f(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v5, v1, v11}, Landroid/support/v7/widget/av;->e(II)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    invoke-direct {p0, v8, v5}, Landroid/support/v7/widget/p;->a(Landroid/content/Context;Landroid/support/v7/widget/av;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/av;->a()V

    if-eqz v4, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_b
    if-eqz v6, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    if-eqz v7, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    if-nez v9, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/p;->a(Z)V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    iget v3, p0, Landroid/support/v7/widget/p;->i:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->e()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_10

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->d()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v4}, Landroid/support/v7/widget/r;->b()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_10
    :goto_5
    sget-object v0, Landroid/support/v7/a/a$j;->AppCompatTextView:[I

    invoke-static {v8, p1, v0}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/av;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v0, v1, v11}, Landroid/support/v7/widget/av;->e(II)I

    move-result v1

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/av;->e(II)I

    move-result v2

    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v0, v3, v11}, Landroid/support/v7/widget/av;->e(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->a()V

    if-eq v1, v11, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/widget/m;->a(Landroid/widget/TextView;I)V

    :cond_11
    if-eq v2, v11, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/support/v4/widget/m;->b(Landroid/widget/TextView;I)V

    :cond_12
    if-eq v3, v11, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/support/v4/widget/m;->c(Landroid/widget/TextView;I)V

    :cond_13
    return-void

    :cond_14
    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_5

    :cond_15
    move-object v7, v5

    goto/16 :goto_3

    :cond_16
    move-object v6, v5

    goto/16 :goto_2

    :cond_17
    move-object v4, v5

    goto/16 :goto_1

    :cond_18
    move-object v7, v5

    move-object v6, v5

    move-object v4, v5

    goto/16 :goto_3

    :cond_19
    move v0, v2

    move v3, v2

    goto/16 :goto_0

    :cond_1a
    move-object v7, v5

    move-object v6, v5

    move-object v4, v5

    move v0, v2

    move v3, v2

    goto/16 :goto_4
.end method

.method a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/p;->k:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Landroid/support/v7/widget/p;->j:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/p;->i:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method a(ZIIII)V
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/b;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->b()V

    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/r;->a([II)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->f()V

    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->d()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->h:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->e()[I

    move-result-object v0

    return-object v0
.end method
