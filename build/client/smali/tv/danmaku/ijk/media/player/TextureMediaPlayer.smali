.class public Ltv/danmaku/ijk/media/player/TextureMediaPlayer;
.super Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->release()V

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->reset()V

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-super {p0, v0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    return-void
.end method
