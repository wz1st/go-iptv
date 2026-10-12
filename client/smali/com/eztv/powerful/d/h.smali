.class public Lcom/eztv/powerful/d/h;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eztv/powerful/d/h$b;,
        Lcom/eztv/powerful/d/h$a;,
        Lcom/eztv/powerful/d/h$c;,
        Lcom/eztv/powerful/d/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/eztv/powerful/d/h$d;",
        ">;"
    }
.end annotation


# static fields
.field public static a:F


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/setting/MySettings;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/eztv/powerful/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    sput v0, Lcom/eztv/powerful/d/h;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eztv/powerful/b/h;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v0, p0, Lcom/eztv/powerful/d/h;->b:I

    iput v0, p0, Lcom/eztv/powerful/d/h;->c:I

    iput-object p1, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/eztv/powerful/d/h;->f:Ljava/util/ArrayList;

    iput p3, p0, Lcom/eztv/powerful/d/h;->b:I

    iput p3, p0, Lcom/eztv/powerful/d/h;->c:I

    new-instance v0, Lcom/setting/MySettings;

    invoke-direct {v0, p1}, Lcom/setting/MySettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eztv/powerful/d/h;->d:Lcom/setting/MySettings;

    return-void
.end method

.method static synthetic a(Lcom/eztv/powerful/d/h;)Lcom/eztv/powerful/d/j;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->g:Lcom/eztv/powerful/d/j;

    return-object v0
.end method

.method private b(Lcom/eztv/powerful/d/h$d;I)V
    .locals 3

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->x:Lcom/eztv/powerful/b/g;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->D:I

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/b/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/f;

    iget-object v0, v0, Lcom/eztv/powerful/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/eztv/powerful/b/h;->b:Z

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->b:Landroid/view/View;

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->B:Landroid/view/View;

    return-void
.end method

.method private c(Lcom/eztv/powerful/d/h$d;I)V
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->d:Lcom/setting/MySettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toggle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/setting/MySettings;->e(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->d:Lcom/setting/MySettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hide"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/setting/MySettings;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eztv/powerful/d/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/h$d;
    .locals 3

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/eztv/powerful/d/h$d;

    invoke-direct {v1, p0, v0}, Lcom/eztv/powerful/d/h$d;-><init>(Lcom/eztv/powerful/d/h;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 0

    check-cast p1, Lcom/eztv/powerful/d/h$d;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/h;->a(Lcom/eztv/powerful/d/h$d;I)V

    return-void
.end method

.method public a(Lcom/eztv/powerful/d/h$d;I)V
    .locals 4

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->b:Landroid/view/View;

    const v1, 0x7f0a0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eztv/powerful/d/h;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/eztv/powerful/d/h$d;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/eztv/powerful/d/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/h;

    iget-object v0, v0, Lcom/eztv/powerful/b/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/h$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/h$b;-><init>(Lcom/eztv/powerful/d/h;ILcom/eztv/powerful/d/h$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/h$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/h$a;-><init>(Lcom/eztv/powerful/d/h;ILcom/eztv/powerful/d/h$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/eztv/powerful/d/h$d;->b:Landroid/view/View;

    new-instance v1, Lcom/eztv/powerful/d/h$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/eztv/powerful/d/h$c;-><init>(Lcom/eztv/powerful/d/h;ILcom/eztv/powerful/d/h$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Lcom/eztv/powerful/PlayerActivity;->D:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v0, Lcom/eztv/powerful/PlayerActivity;->v:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/eztv/powerful/PlayerActivity;->e:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/eztv/powerful/PlayerActivity;->s:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/eztv/powerful/PlayerActivity;->l:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_5
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_a
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_b
    sget v0, Lcom/eztv/powerful/PlayerActivity;->ar:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_c
    sget v0, Lcom/eztv/powerful/PlayerActivity;->u:I

    div-int/lit16 v0, v0, 0x1388

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto :goto_0

    :pswitch_d
    packed-switch p2, :pswitch_data_2

    :pswitch_e
    goto/16 :goto_0

    :pswitch_f
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_10
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->aF:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_11
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_12
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_13
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_14
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_15
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_16
    sget-boolean v0, Lcom/eztv/powerful/PlayerActivity;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->c(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Lcom/eztv/powerful/PlayerActivity;->x:Lcom/eztv/powerful/b/g;

    sget v1, Lcom/eztv/powerful/PlayerActivity;->D:I

    invoke-virtual {v0, v1}, Lcom/eztv/powerful/b/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/f;

    iget-object v0, v0, Lcom/eztv/powerful/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eztv/powerful/b/h;

    iget-object v0, v0, Lcom/eztv/powerful/b/h;->a:Ljava/lang/String;

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/eztv/powerful/d/h;->b(Lcom/eztv/powerful/d/h$d;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public a(Lcom/eztv/powerful/d/j;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/h;->g:Lcom/eztv/powerful/d/j;

    return-void
.end method

.method public b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/d/h;->a(Landroid/view/ViewGroup;I)Lcom/eztv/powerful/d/h$d;

    move-result-object v0

    return-object v0
.end method
