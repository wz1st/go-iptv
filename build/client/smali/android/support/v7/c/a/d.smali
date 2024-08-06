.class Landroid/support/v7/c/a/d;
.super Landroid/support/v7/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/c/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/c/a/d$a;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v7/c/a/d;-><init>(Landroid/support/v7/c/a/d$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/c/a/d$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/c/a/b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/c/a/d;->a(Landroid/support/v7/c/a/b$b;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/support/v7/c/a/d$a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/c/a/b;-><init>()V

    new-instance v0, Landroid/support/v7/c/a/d$a;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v7/c/a/d$a;-><init>(Landroid/support/v7/c/a/d$a;Landroid/support/v7/c/a/d;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/d;->a(Landroid/support/v7/c/a/b$b;)V

    invoke-virtual {p0}, Landroid/support/v7/c/a/d;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/d;->onStateChange([I)Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7

    const/4 v6, 0x2

    iget-object v1, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    :cond_1
    if-ne v0, v6, :cond_0

    if-gt v3, v2, :cond_0

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/a/a$j;->StateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x0

    sget v4, Landroid/support/v7/a/a$j;->StateListDrawableItem_android_drawable:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {p1, v4}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, Landroid/support/v7/c/a/d;->a(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v0, :cond_5

    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    if-eq v0, v6, :cond_4

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_6

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v0}, Landroid/support/v7/c/a/d$a;->a([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    :cond_6
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_7
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/support/v7/c/a/d$a;->f:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/c/a/d$a;->f:I

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_variablePadding:I

    iget-boolean v2, v0, Landroid/support/v7/c/a/d$a;->k:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/c/a/d$a;->k:Z

    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_constantSize:I

    iget-boolean v2, v0, Landroid/support/v7/c/a/d$a;->n:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/c/a/d$a;->n:Z

    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_enterFadeDuration:I

    iget v2, v0, Landroid/support/v7/c/a/d$a;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/support/v7/c/a/d$a;->C:I

    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_exitFadeDuration:I

    iget v2, v0, Landroid/support/v7/c/a/d$a;->D:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/support/v7/c/a/d$a;->D:I

    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_dither:I

    iget-boolean v2, v0, Landroid/support/v7/c/a/d$a;->z:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/c/a/d$a;->z:Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/c/a/b$b;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/support/v7/c/a/b$b;)V

    instance-of v0, p1, Landroid/support/v7/c/a/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/c/a/d$a;

    iput-object p1, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;)[I
    .locals 8

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    new-array v6, v5, [I

    move v3, v4

    move v1, v4

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    aput v0, v6, v1

    move v0, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v1, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_2

    :sswitch_1
    move v0, v1

    goto :goto_2

    :cond_0
    neg-int v0, v0

    goto :goto_1

    :cond_1
    invoke-static {v6, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_1
    .end sparse-switch
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/support/v7/c/a/d;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/d;->onStateChange([I)Z

    return-void
.end method

.method b()Landroid/support/v7/c/a/d$a;
    .locals 3

    new-instance v0, Landroid/support/v7/c/a/d$a;

    iget-object v1, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/c/a/d$a;-><init>(Landroid/support/v7/c/a/d$a;Landroid/support/v7/c/a/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Landroid/support/v7/a/a$j;->StateListDrawable:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->StateListDrawable_android_visible:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/c/a/d;->setVisible(ZZ)Z

    invoke-direct {p0, v0}, Landroid/support/v7/c/a/d;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/c/a/d;->a(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct/range {p0 .. p5}, Landroid/support/v7/c/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/support/v7/c/a/d;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/d;->onStateChange([I)Z

    return-void
.end method

.method synthetic c()Landroid/support/v7/c/a/b$b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/c/a/d;->b()Landroid/support/v7/c/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/c/a/d;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/c/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/c/a/d$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/c/a/d;->b:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/c/a/b;->onStateChange([I)Z

    move-result v1

    iget-object v0, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a/d$a;->b([I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/d;->a:Landroid/support/v7/c/a/d$a;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v2}, Landroid/support/v7/c/a/d$a;->b([I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
