.class public Landroid/support/v7/widget/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/support/v7/widget/a;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/a$a;->b:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/a$a;->c:Z

    return-void
.end method
