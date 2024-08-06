.class Landroid/support/v4/media/session/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
