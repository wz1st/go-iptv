.class public final Landroid/support/v4/d/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/support/v4/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/d/a;->a(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/d/a$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v4/d/a$a;->a:Z

    sget-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    iput-object v0, p0, Landroid/support/v4/d/a$a;->c:Landroid/support/v4/d/d;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/d/a$a;->b:I

    return-void
.end method

.method private static b(Z)Landroid/support/v4/d/a;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/support/v4/d/a;->c:Landroid/support/v4/d/a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/v4/d/a;
    .locals 4

    iget v0, p0, Landroid/support/v4/d/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/d/a$a;->c:Landroid/support/v4/d/d;

    sget-object v1, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/d/a$a;->a:Z

    invoke-static {v0}, Landroid/support/v4/d/a$a;->b(Z)Landroid/support/v4/d/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/d/a;

    iget-boolean v1, p0, Landroid/support/v4/d/a$a;->a:Z

    iget v2, p0, Landroid/support/v4/d/a$a;->b:I

    iget-object v3, p0, Landroid/support/v4/d/a$a;->c:Landroid/support/v4/d/d;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/d/a;-><init>(ZILandroid/support/v4/d/d;)V

    goto :goto_0
.end method
