.class public Landroid/support/v4/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/b$a;,
        Landroid/support/v4/b/b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Z

.field final b:Landroid/os/Handler;

.field c:Landroid/support/v4/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/b/b$1;

    invoke-direct {v0}, Landroid/support/v4/b/b$1;-><init>()V

    sput-object v0, Landroid/support/v4/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/b/b;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b/a$a;->a(Landroid/os/IBinder;)Landroid/support/v4/b/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/b;->c:Landroid/support/v4/b/a;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/b/b;->c:Landroid/support/v4/b/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/b/b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/b/b$a;-><init>(Landroid/support/v4/b/b;)V

    iput-object v0, p0, Landroid/support/v4/b/b;->c:Landroid/support/v4/b/a;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/b;->c:Landroid/support/v4/b/a;

    invoke-interface {v0}, Landroid/support/v4/b/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
