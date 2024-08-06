.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/d/a$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/d/d;

.field static final b:Landroid/support/v4/d/a;

.field static final c:Landroid/support/v4/d/a;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Landroid/support/v4/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Landroid/support/v4/d/e;->c:Landroid/support/v4/d/d;

    sput-object v0, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/d/a;->d:Ljava/lang/String;

    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/d/a;->e:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/d/a;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/d/a;-><init>(ZILandroid/support/v4/d/d;)V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/a;

    new-instance v0, Landroid/support/v4/d/a;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v4/d/a;->a:Landroid/support/v4/d/d;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/d/a;-><init>(ZILandroid/support/v4/d/d;)V

    sput-object v0, Landroid/support/v4/d/a;->c:Landroid/support/v4/d/a;

    return-void
.end method

.method constructor <init>(ZILandroid/support/v4/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v4/d/a;->f:Z

    iput p2, p0, Landroid/support/v4/d/a;->g:I

    iput-object p3, p0, Landroid/support/v4/d/a;->h:Landroid/support/v4/d/d;

    return-void
.end method

.method public static a()Landroid/support/v4/d/a;
    .locals 1

    new-instance v0, Landroid/support/v4/d/a$a;

    invoke-direct {v0}, Landroid/support/v4/d/a$a;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/d/a$a;->a()Landroid/support/v4/d/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/support/v4/d/f;->a(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/d/a;->f:Z

    return v0
.end method
