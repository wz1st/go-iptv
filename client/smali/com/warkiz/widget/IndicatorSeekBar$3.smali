.class Lcom/warkiz/widget/IndicatorSeekBar$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warkiz/widget/IndicatorSeekBar;->showStayIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warkiz/widget/IndicatorSeekBar;


# direct methods
.method constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->access$800(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$700(Lcom/warkiz/widget/IndicatorSeekBar;)V

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->access$800(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
