.class public Landroid/support/v4/f/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/f/a/c$b;,
        Landroid/support/v4/f/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/f/a/c$b;

    invoke-direct {v0, p0}, Landroid/support/v4/f/a/c$b;-><init>(Landroid/support/v4/f/a/c;)V

    iput-object v0, p0, Landroid/support/v4/f/a/c;->a:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/f/a/c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/f/a/c$a;-><init>(Landroid/support/v4/f/a/c;)V

    iput-object v0, p0, Landroid/support/v4/f/a/c;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/f/a/c;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f/a/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/f/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f/a/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/f/a/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/support/v4/f/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
