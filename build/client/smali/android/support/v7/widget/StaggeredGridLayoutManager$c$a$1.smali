.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;",
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
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 1

    new-array v0, p1, [Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a$1;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a$1;->a(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    return-object v0
.end method
