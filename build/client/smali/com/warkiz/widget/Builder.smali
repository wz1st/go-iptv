.class public Lcom/warkiz/widget/Builder;
.super Ljava/lang/Object;


# instance fields
.field clearPadding:Z

.field final context:Landroid/content/Context;

.field indicatorColor:I

.field indicatorContentView:Landroid/view/View;

.field indicatorTextColor:I

.field indicatorTextSize:I

.field indicatorTopContentView:Landroid/view/View;

.field max:F

.field min:F

.field onlyThumbDraggable:Z

.field progress:F

.field progressValueFloat:Z

.field r2l:Z

.field seekSmoothly:Z

.field showIndicatorType:I

.field showThumbText:Z

.field showTickMarksType:I

.field showTickText:Z

.field thumbColor:I

.field thumbColorStateList:Landroid/content/res/ColorStateList;

.field thumbDrawable:Landroid/graphics/drawable/Drawable;

.field thumbSize:I

.field thumbTextColor:I

.field tickCount:I

.field tickMarksColor:I

.field tickMarksColorStateList:Landroid/content/res/ColorStateList;

.field tickMarksDrawable:Landroid/graphics/drawable/Drawable;

.field tickMarksEndsHide:Z

.field tickMarksSize:I

.field tickMarksSweptHide:Z

.field tickTextsColor:I

.field tickTextsColorStateList:Landroid/content/res/ColorStateList;

.field tickTextsCustomArray:[Ljava/lang/String;

.field tickTextsSize:I

.field tickTextsTypeFace:Landroid/graphics/Typeface;

.field trackBackgroundColor:I

.field trackBackgroundSize:I

.field trackProgressColor:I

.field trackProgressSize:I

.field trackRoundedCorners:Z

.field userSeekable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/warkiz/widget/Builder;->max:F

    iput v3, p0, Lcom/warkiz/widget/Builder;->min:F

    iput v3, p0, Lcom/warkiz/widget/Builder;->progress:F

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->progressValueFloat:Z

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->seekSmoothly:Z

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->r2l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warkiz/widget/Builder;->userSeekable:Z

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->onlyThumbDraggable:Z

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->clearPadding:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/warkiz/widget/Builder;->showIndicatorType:I

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->indicatorColor:I

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->indicatorTextColor:I

    iput v1, p0, Lcom/warkiz/widget/Builder;->indicatorTextSize:I

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->indicatorContentView:Landroid/view/View;

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->indicatorTopContentView:Landroid/view/View;

    iput v1, p0, Lcom/warkiz/widget/Builder;->trackBackgroundSize:I

    const-string v0, "#D7D7D7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackBackgroundColor:I

    iput v1, p0, Lcom/warkiz/widget/Builder;->trackProgressSize:I

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackProgressColor:I

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->trackRoundedCorners:Z

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->thumbTextColor:I

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->showThumbText:Z

    iput v1, p0, Lcom/warkiz/widget/Builder;->thumbSize:I

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->thumbColor:I

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->thumbColorStateList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickTextsColor:I

    iput v1, p0, Lcom/warkiz/widget/Builder;->tickTextsSize:I

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->tickTextsCustomArray:[Ljava/lang/String;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/warkiz/widget/Builder;->tickTextsTypeFace:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->tickTextsColorStateList:Landroid/content/res/ColorStateList;

    iput v1, p0, Lcom/warkiz/widget/Builder;->tickCount:I

    iput v1, p0, Lcom/warkiz/widget/Builder;->showTickMarksType:I

    const-string v0, "#FF4081"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickMarksColor:I

    iput v1, p0, Lcom/warkiz/widget/Builder;->tickMarksSize:I

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->tickMarksDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->tickMarksEndsHide:Z

    iput-boolean v1, p0, Lcom/warkiz/widget/Builder;->tickMarksSweptHide:Z

    iput-object v2, p0, Lcom/warkiz/widget/Builder;->tickMarksColorStateList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/warkiz/widget/SizeUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->indicatorTextSize:I

    invoke-static {p1, v4}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackBackgroundSize:I

    invoke-static {p1, v4}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackProgressSize:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickMarksSize:I

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p1, v0}, Lcom/warkiz/widget/SizeUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickTextsSize:I

    invoke-static {p1, v5}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->thumbSize:I

    return-void
.end method


# virtual methods
.method public build()Lcom/warkiz/widget/IndicatorSeekBar;
    .locals 1

    new-instance v0, Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-direct {v0, p0}, Lcom/warkiz/widget/IndicatorSeekBar;-><init>(Lcom/warkiz/widget/Builder;)V

    return-object v0
.end method

.method public clearPadding(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->clearPadding:Z

    return-object p0
.end method

.method public indicatorColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->indicatorColor:I

    return-object p0
.end method

.method public indicatorContentView(Landroid/view/View;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->indicatorContentView:Landroid/view/View;

    return-object p0
.end method

.method public indicatorContentViewLayoutId(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/Builder;->indicatorContentView:Landroid/view/View;

    return-object p0
.end method

.method public indicatorTextColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->indicatorTextColor:I

    return-object p0
.end method

.method public indicatorTextSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->indicatorTextSize:I

    return-object p0
.end method

.method public indicatorTopContentView(Landroid/view/View;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->indicatorTopContentView:Landroid/view/View;

    return-object p0
.end method

.method public indicatorTopContentViewLayoutId(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/Builder;->indicatorTopContentView:Landroid/view/View;

    return-object p0
.end method

.method public max(F)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->max:F

    return-object p0
.end method

.method public min(F)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->min:F

    return-object p0
.end method

.method public onlyThumbDraggable(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->onlyThumbDraggable:Z

    return-object p0
.end method

.method public progress(F)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->progress:F

    return-object p0
.end method

.method public progressValueFloat(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->progressValueFloat:Z

    return-object p0
.end method

.method public r2l(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->r2l:Z

    return-object p0
.end method

.method public seekSmoothly(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->seekSmoothly:Z

    return-object p0
.end method

.method public showIndicatorType(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->showIndicatorType:I

    return-object p0
.end method

.method public showThumbText(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->showThumbText:Z

    return-object p0
.end method

.method public showTickMarksType(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->showTickMarksType:I

    return-object p0
.end method

.method public showTickTexts(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->showTickText:Z

    return-object p0
.end method

.method public thumbColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->thumbColor:I

    return-object p0
.end method

.method public thumbColorStateList(Landroid/content/res/ColorStateList;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->thumbColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public thumbDrawable(Landroid/graphics/drawable/Drawable;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public thumbDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public thumbSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->thumbSize:I

    return-object p0
.end method

.method public thumbTextColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->thumbTextColor:I

    return-object p0
.end method

.method public tickCount(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->tickCount:I

    return-object p0
.end method

.method public tickMarksColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->tickMarksColor:I

    return-object p0
.end method

.method public tickMarksColor(Landroid/content/res/ColorStateList;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickMarksColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public tickMarksDrawable(Landroid/graphics/drawable/Drawable;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickMarksDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public tickMarksDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickMarksDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public tickMarksEndsHide(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->tickMarksEndsHide:Z

    return-object p0
.end method

.method public tickMarksSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickMarksSize:I

    return-object p0
.end method

.method public tickMarksSweptHide(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->tickMarksSweptHide:Z

    return-object p0
.end method

.method public tickTextsArray(I)Lcom/warkiz/widget/Builder;
    .locals 1

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/warkiz/widget/Builder;->tickTextsCustomArray:[Ljava/lang/String;

    return-object p0
.end method

.method public tickTextsArray([Ljava/lang/String;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickTextsCustomArray:[Ljava/lang/String;

    return-object p0
.end method

.method public tickTextsColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->tickTextsColor:I

    return-object p0
.end method

.method public tickTextsColorStateList(Landroid/content/res/ColorStateList;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickTextsColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public tickTextsSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->tickTextsSize:I

    return-object p0
.end method

.method public tickTextsTypeFace(Landroid/graphics/Typeface;)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/Builder;->tickTextsTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public trackBackgroundColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->trackBackgroundColor:I

    return-object p0
.end method

.method public trackBackgroundSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackBackgroundSize:I

    return-object p0
.end method

.method public trackProgressColor(I)Lcom/warkiz/widget/Builder;
    .locals 0

    iput p1, p0, Lcom/warkiz/widget/Builder;->trackProgressColor:I

    return-object p0
.end method

.method public trackProgressSize(I)Lcom/warkiz/widget/Builder;
    .locals 2

    iget-object v0, p0, Lcom/warkiz/widget/Builder;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/SizeUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/warkiz/widget/Builder;->trackProgressSize:I

    return-object p0
.end method

.method public trackRoundedCorners(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->trackRoundedCorners:Z

    return-object p0
.end method

.method public userSeekable(Z)Lcom/warkiz/widget/Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/warkiz/widget/Builder;->userSeekable:Z

    return-object p0
.end method
