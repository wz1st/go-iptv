.class public Landroid/support/constraint/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/h$a;
    }
.end annotation


# static fields
.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I


# instance fields
.field public a:I

.field b:I

.field public c:I

.field public d:F

.field e:[F

.field f:Landroid/support/constraint/a/h$a;

.field g:[Landroid/support/constraint/a/b;

.field h:I

.field public i:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/a/h;->j:I

    sput v0, Landroid/support/constraint/a/h;->k:I

    sput v0, Landroid/support/constraint/a/h;->l:I

    sput v0, Landroid/support/constraint/a/h;->m:I

    sput v0, Landroid/support/constraint/a/h;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/constraint/a/h;->a:I

    iput v0, p0, Landroid/support/constraint/a/h;->b:I

    iput v1, p0, Landroid/support/constraint/a/h;->c:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/a/h;->e:[F

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    iput v1, p0, Landroid/support/constraint/a/h;->h:I

    iput v1, p0, Landroid/support/constraint/a/h;->i:I

    iput-object p1, p0, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    return-void
.end method

.method static a()V
    .locals 1

    sget v0, Landroid/support/constraint/a/h;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/a/h;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/b;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/h;->h:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/h;->h:I

    iget-object v1, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/h;->h:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/h;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/h;->h:I

    goto :goto_1
.end method

.method public a(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/h;->o:Ljava/lang/String;

    sget-object v0, Landroid/support/constraint/a/h$a;->e:Landroid/support/constraint/a/h$a;

    iput-object v0, p0, Landroid/support/constraint/a/h;->f:Landroid/support/constraint/a/h$a;

    iput v1, p0, Landroid/support/constraint/a/h;->c:I

    iput v2, p0, Landroid/support/constraint/a/h;->a:I

    iput v2, p0, Landroid/support/constraint/a/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/h;->d:F

    iput v1, p0, Landroid/support/constraint/a/h;->h:I

    iput v1, p0, Landroid/support/constraint/a/h;->i:I

    return-void
.end method

.method public final b(Landroid/support/constraint/a/b;)V
    .locals 7

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/constraint/a/h;->h:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_2

    :goto_1
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/h;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/h;->h:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c(Landroid/support/constraint/a/b;)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/constraint/a/h;->h:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/support/constraint/a/b;->d:Landroid/support/constraint/a/a;

    iget-object v4, p0, Landroid/support/constraint/a/h;->g:[Landroid/support/constraint/a/b;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, p1, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/b;Landroid/support/constraint/a/b;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/support/constraint/a/h;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
