.class public Landroid/support/v17/leanback/widget/SpeechOrbView;
.super Landroid/support/v17/leanback/widget/SearchOrbView;


# instance fields
.field private final a:F

.field private b:Landroid/support/v17/leanback/widget/SearchOrbView$a;

.field private c:Landroid/support/v17/leanback/widget/SearchOrbView$a;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$e;->lb_search_bar_speech_orb_max_level_zoom:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->a:F

    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$a;

    sget v2, Landroid/support/v17/leanback/a$b;->lb_speech_orb_not_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/v17/leanback/a$b;->lb_speech_orb_not_recording_pulsed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/v17/leanback/a$b;->lb_speech_orb_not_recording_icon:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/SearchOrbView$a;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->c:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$a;

    sget v2, Landroid/support/v17/leanback/a$b;->lb_speech_orb_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/v17/leanback/a$b;->lb_speech_orb_recording:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v2, v0, v5}, Landroid/support/v17/leanback/widget/SearchOrbView$a;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->b:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->b:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$d;->lb_ic_search_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->a(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SpeechOrbView;->b(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->a(F)V

    iput v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->e:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->c:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$d;->lb_ic_search_mic_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->a(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->a(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->e:Z

    return-void
.end method

.method getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/a$h;->lb_speech_orb:I

    return v0
.end method

.method public setListeningOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->b:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    return-void
.end method

.method public setNotListeningOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->c:Landroid/support/v17/leanback/widget/SearchOrbView$a;

    return-void
.end method

.method public setSoundLevel(I)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    if-le p1, v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->a:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getFocusedZoom()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->a(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->d:I

    goto :goto_1
.end method
