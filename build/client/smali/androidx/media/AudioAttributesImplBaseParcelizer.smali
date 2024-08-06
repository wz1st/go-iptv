.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroid/support/v4/media/c;
    .locals 3

    new-instance v0, Landroid/support/v4/media/c;

    invoke-direct {v0}, Landroid/support/v4/media/c;-><init>()V

    iget v1, v0, Landroid/support/v4/media/c;->mUsage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->mUsage:I

    iget v1, v0, Landroid/support/v4/media/c;->mContentType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->mContentType:I

    iget v1, v0, Landroid/support/v4/media/c;->mFlags:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->mFlags:I

    iget v1, v0, Landroid/support/v4/media/c;->mLegacyStream:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->mLegacyStream:I

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/c;Landroidx/versionedparcelable/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/a;->a(ZZ)V

    iget v0, p0, Landroid/support/v4/media/c;->mUsage:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget v0, p0, Landroid/support/v4/media/c;->mContentType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget v0, p0, Landroid/support/v4/media/c;->mFlags:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    iget v0, p0, Landroid/support/v4/media/c;->mLegacyStream:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    return-void
.end method
