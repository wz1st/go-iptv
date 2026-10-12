.class Landroid/support/c/a/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/c/a/a;


# direct methods
.method constructor <init>(Landroid/support/c/a/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/c/a/a$e;->a:Landroid/support/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/a$e;->a:Landroid/support/c/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/c/a/a;->a(I)V

    const/4 v0, 0x1

    return v0
.end method
