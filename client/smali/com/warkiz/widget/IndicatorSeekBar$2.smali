.class Lcom/warkiz/widget/IndicatorSeekBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warkiz/widget/IndicatorSeekBar;->autoAdjustThumb()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warkiz/widget/IndicatorSeekBar;

.field final synthetic val$closestIndex:I

.field final synthetic val$touchUpProgress:F


# direct methods
.method constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$touchUpProgress:F

    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$closestIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$100(Lcom/warkiz/widget/IndicatorSeekBar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$002(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$touchUpProgress:F

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$200(Lcom/warkiz/widget/IndicatorSeekBar;)[F

    move-result-object v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$closestIndex:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$touchUpProgress:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$102(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$100(Lcom/warkiz/widget/IndicatorSeekBar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$300(Lcom/warkiz/widget/IndicatorSeekBar;F)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$400(Lcom/warkiz/widget/IndicatorSeekBar;Z)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$500(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/Indicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$600(Lcom/warkiz/widget/IndicatorSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$500(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/warkiz/widget/Indicator;->refreshProgressText()V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$700(Lcom/warkiz/widget/IndicatorSeekBar;)V

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->invalidate()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar$2;->val$touchUpProgress:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$102(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    goto :goto_0
.end method
