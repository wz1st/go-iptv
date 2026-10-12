.class public Lcom/warkiz/widget/SeekParams;
.super Ljava/lang/Object;


# instance fields
.field public fromUser:Z

.field public progress:I

.field public progressFloat:F

.field public seekBar:Lcom/warkiz/widget/IndicatorSeekBar;

.field public thumbPosition:I

.field public tickText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warkiz/widget/SeekParams;->seekBar:Lcom/warkiz/widget/IndicatorSeekBar;

    return-void
.end method
