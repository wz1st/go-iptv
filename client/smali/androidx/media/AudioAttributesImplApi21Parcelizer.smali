.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroid/support/v4/media/b;
    .locals 3

    new-instance v1, Landroid/support/v4/media/b;

    invoke-direct {v1}, Landroid/support/v4/media/b;-><init>()V

    iget-object v0, v1, Landroid/support/v4/media/b;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, v1, Landroid/support/v4/media/b;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v0, v1, Landroid/support/v4/media/b;->mLegacyStreamType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v0

    iput v0, v1, Landroid/support/v4/media/b;->mLegacyStreamType:I

    return-object v1
.end method

.method public static write(Landroid/support/v4/media/b;Landroidx/versionedparcelable/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/a;->a(ZZ)V

    iget-object v0, p0, Landroid/support/v4/media/b;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/support/v4/media/b;->mLegacyStreamType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    return-void
.end method
