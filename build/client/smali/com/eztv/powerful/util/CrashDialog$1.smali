.class Lcom/eztv/powerful/util/CrashDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/util/CrashDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/util/CrashDialog;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/util/CrashDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/util/CrashDialog$1;->a:Lcom/eztv/powerful/util/CrashDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
