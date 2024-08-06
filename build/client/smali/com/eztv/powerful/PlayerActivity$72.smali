.class Lcom/eztv/powerful/PlayerActivity$72;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/PlayerActivity;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/PlayerActivity$72;->a:Lcom/eztv/powerful/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$72;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity;->af:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/eztv/powerful/PlayerActivity;->V:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/eztv/powerful/PlayerActivity;->S:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/eztv/powerful/util/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eztv/powerful/PlayerActivity$72;->a:Lcom/eztv/powerful/PlayerActivity;

    iget-object v1, v1, Lcom/eztv/powerful/PlayerActivity;->ap:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eztv/powerful/PlayerActivity;->aG:Ljava/lang/String;

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$72;->a:Lcom/eztv/powerful/PlayerActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->b(Lcom/eztv/powerful/PlayerActivity;I)V

    iget-object v0, p0, Lcom/eztv/powerful/PlayerActivity$72;->a:Lcom/eztv/powerful/PlayerActivity;

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v0, v1}, Lcom/eztv/powerful/PlayerActivity;->a(Lcom/eztv/powerful/PlayerActivity;F)F

    const/4 v0, 0x0

    sput v0, Lcom/eztv/powerful/PlayerActivity;->aJ:F

    return-void
.end method
