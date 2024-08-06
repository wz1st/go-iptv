.class Landroid/support/v17/leanback/widget/CheckableImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v17/leanback/widget/CheckableImageView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->a:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CheckableImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/v17/leanback/widget/CheckableImageView;->b:[I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/CheckableImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->a:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CheckableImageView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
