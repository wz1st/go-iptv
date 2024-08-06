.class final Lcom/b/a/c/d/a/w$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/d/a/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/d/a/w$c",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaMetadataRetriever;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/a/w$d;->a(Landroid/media/MediaMetadataRetriever;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
