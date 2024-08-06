.class Landroid/support/v4/d/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/d/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroid/support/v4/d/e$a;

.field static final b:Landroid/support/v4/d/e$a;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/d/e$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/d/e$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/d/e$a;->a:Landroid/support/v4/d/e$a;

    new-instance v0, Landroid/support/v4/d/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/d/e$a;-><init>(Z)V

    sput-object v0, Landroid/support/v4/d/e$a;->b:Landroid/support/v4/d/e$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v4/d/e$a;->c:Z

    return-void
.end method
