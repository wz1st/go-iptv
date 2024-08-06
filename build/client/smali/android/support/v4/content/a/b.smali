.class public final Landroid/support/v4/content/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/Shader;

.field private final b:Landroid/content/res/ColorStateList;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/a/b;->a:Landroid/graphics/Shader;

    iput-object p2, p0, Landroid/support/v4/content/a/b;->b:Landroid/content/res/ColorStateList;

    iput p3, p0, Landroid/support/v4/content/a/b;->c:I

    return-void
.end method

.method static a(I)Landroid/support/v4/content/a/b;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/support/v4/content/a/b;

    invoke-direct {v0, v1, v1, p0}, Landroid/support/v4/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static a(Landroid/content/res/ColorStateList;)Landroid/support/v4/content/a/b;
    .locals 3

    new-instance v0, Landroid/support/v4/content/a/b;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v4/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/a/b;
    .locals 3

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/a/b;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ComplexColorCompat"

    const-string v2, "Failed to inflate ComplexColor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/graphics/Shader;)Landroid/support/v4/content/a/b;
    .locals 3

    new-instance v0, Landroid/support/v4/content/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/content/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/v4/content/a/b;
    .locals 6

    const/4 v4, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v4, :cond_2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v1, "selector"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "gradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v2, v3, p2}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/a/b;->a(Landroid/content/res/ColorStateList;)Landroid/support/v4/content/a/b;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    invoke-static {p0, v2, v3, p2}, Landroid/support/v4/content/a/d;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/a/b;->a(Landroid/graphics/Shader;)Landroid/support/v4/content/a/b;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x557f730 -> :sswitch_1
        0x4705f3df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/a/b;->a:Landroid/graphics/Shader;

    return-object v0
.end method

.method public a([I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/content/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/content/a/b;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v4/content/a/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/content/a/b;->c:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    iput v1, p0, Landroid/support/v4/content/a/b;->c:I

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/content/a/b;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/content/a/b;->c:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/a/b;->a:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/a/b;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/a/b;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/a/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/content/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/content/a/b;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
