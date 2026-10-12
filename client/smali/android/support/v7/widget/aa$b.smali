.class Landroid/support/v7/widget/aa$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroid/support/v7/widget/RecyclerView;

.field public e:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/aa$b;->a:Z

    iput v1, p0, Landroid/support/v7/widget/aa$b;->b:I

    iput v1, p0, Landroid/support/v7/widget/aa$b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aa$b;->d:Landroid/support/v7/widget/RecyclerView;

    iput v1, p0, Landroid/support/v7/widget/aa$b;->e:I

    return-void
.end method
