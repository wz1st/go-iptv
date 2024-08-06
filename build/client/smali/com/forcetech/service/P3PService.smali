.class public Lcom/forcetech/service/P3PService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/forcetech/android/ForceTV;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    new-instance v0, Lcom/forcetech/android/ForceTV;

    invoke-direct {v0}, Lcom/forcetech/android/ForceTV;-><init>()V

    iput-object v0, p0, Lcom/forcetech/service/P3PService;->a:Lcom/forcetech/android/ForceTV;

    iget-object v0, p0, Lcom/forcetech/service/P3PService;->a:Lcom/forcetech/android/ForceTV;

    const-string v1, "p3p"

    const/16 v2, 0x26b3

    invoke-virtual {v0, v1, v2}, Lcom/forcetech/android/ForceTV;->start(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/forcetech/service/P3PService;->a:Lcom/forcetech/android/ForceTV;

    invoke-virtual {v0}, Lcom/forcetech/android/ForceTV;->stop()I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
