.class public final Landroid/support/v4/content/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/content/a/a;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v10, v2, 0x1

    const/16 v2, 0x14

    new-array v5, v2, [[I

    array-length v2, v5

    new-array v4, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v10, :cond_1

    const/4 v7, 0x3

    if-eq v2, v7, :cond_7

    :cond_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    if-gt v6, v10, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "item"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/support/a/a$c;->ColorStateListItem:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/content/a/a;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v2, Landroid/support/a/a$c;->ColorStateListItem_android_color:I

    const v7, -0xff01

    invoke-virtual {v6, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    const/high16 v2, 0x3f800000    # 1.0f

    sget v7, Landroid/support/a/a$c;->ColorStateListItem_android_alpha:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Landroid/support/a/a$c;->ColorStateListItem_android_alpha:I

    invoke-virtual {v6, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    new-array v13, v12, [I

    const/4 v6, 0x0

    move v9, v6

    :goto_2
    if-ge v9, v12, :cond_5

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v6

    const v7, 0x10101a5

    if-eq v6, v7, :cond_8

    const v7, 0x101031f

    if-eq v6, v7, :cond_8

    sget v7, Landroid/support/a/a$a;->alpha:I

    if-eq v6, v7, :cond_8

    add-int/lit8 v7, v8, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v14

    if-eqz v14, :cond_4

    :goto_3
    aput v6, v13, v8

    move v6, v7

    :goto_4
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v8, v6

    goto :goto_2

    :cond_3
    sget v7, Landroid/support/a/a$c;->ColorStateListItem_alpha:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Landroid/support/a/a$c;->ColorStateListItem_alpha:I

    invoke-virtual {v6, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_1

    :cond_4
    neg-int v6, v6

    goto :goto_3

    :cond_5
    invoke-static {v13, v8}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v6

    invoke-static {v11, v2}, Landroid/support/v4/content/a/a;->a(IF)I

    move-result v2

    if-eqz v3, :cond_6

    array-length v7, v6

    if-nez v7, :cond_6

    :cond_6
    invoke-static {v4, v3, v2}, Landroid/support/v4/content/a/e;->a([III)[I

    move-result-object v4

    invoke-static {v5, v3, v6}, Landroid/support/v4/content/a/e;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    goto/16 :goto_0

    :cond_7
    new-array v2, v3, [I

    new-array v6, v3, [[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v6, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3

    :cond_8
    move v6, v8

    goto :goto_4
.end method
