.class public Lcom/forcetech/android/ForceTV;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native start(II)I
.end method

.method public start(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/high16 v0, 0x1400000

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/forcetech/android/ForceTV;->start(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native stop()I
.end method
