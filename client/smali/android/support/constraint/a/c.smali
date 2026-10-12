.class public Landroid/support/constraint/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/support/constraint/a/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/a/g$a",
            "<",
            "Landroid/support/constraint/a/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/a/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/a/g$a",
            "<",
            "Landroid/support/constraint/a/h;",
            ">;"
        }
    .end annotation
.end field

.field c:[Landroid/support/constraint/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/g$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/g$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/a/c;->a:Landroid/support/constraint/a/g$a;

    new-instance v0, Landroid/support/constraint/a/g$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/g$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/a/c;->b:Landroid/support/constraint/a/g$a;

    const/16 v0, 0x20

    new-array v0, v0, [Landroid/support/constraint/a/h;

    iput-object v0, p0, Landroid/support/constraint/a/c;->c:[Landroid/support/constraint/a/h;

    return-void
.end method
