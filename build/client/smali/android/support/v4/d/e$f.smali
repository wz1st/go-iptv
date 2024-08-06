.class Landroid/support/v4/d/e$f;
.super Landroid/support/v4/d/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final a:Landroid/support/v4/d/e$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/d/e$f;

    invoke-direct {v0}, Landroid/support/v4/d/e$f;-><init>()V

    sput-object v0, Landroid/support/v4/d/e$f;->a:Landroid/support/v4/d/e$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/d/e$d;-><init>(Landroid/support/v4/d/e$c;)V

    return-void
.end method
