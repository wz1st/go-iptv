.class public Landroid/support/constraint/a/d;
.super Landroid/support/constraint/a/b;


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/constraint/a/b;-><init>(Landroid/support/constraint/a/c;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/support/constraint/a/h;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/constraint/a/b;->d(Landroid/support/constraint/a/h;)V

    iget v0, p1, Landroid/support/constraint/a/h;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/a/h;->i:I

    return-void
.end method
