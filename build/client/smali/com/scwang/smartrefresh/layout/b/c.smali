.class public Lcom/scwang/smartrefresh/layout/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/scwang/smartrefresh/layout/b/c;

.field public static final b:Lcom/scwang/smartrefresh/layout/b/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lcom/scwang/smartrefresh/layout/b/c;

.field public static final d:Lcom/scwang/smartrefresh/layout/b/c;

.field public static final e:Lcom/scwang/smartrefresh/layout/b/c;

.field public static final f:[Lcom/scwang/smartrefresh/layout/b/c;


# instance fields
.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/scwang/smartrefresh/layout/b/c;

    invoke-direct {v0, v2, v3, v2}, Lcom/scwang/smartrefresh/layout/b/c;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    new-instance v0, Lcom/scwang/smartrefresh/layout/b/c;

    invoke-direct {v0, v3, v3, v3}, Lcom/scwang/smartrefresh/layout/b/c;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    new-instance v0, Lcom/scwang/smartrefresh/layout/b/c;

    invoke-direct {v0, v4, v2, v2}, Lcom/scwang/smartrefresh/layout/b/c;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    new-instance v0, Lcom/scwang/smartrefresh/layout/b/c;

    invoke-direct {v0, v5, v3, v2}, Lcom/scwang/smartrefresh/layout/b/c;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->d:Lcom/scwang/smartrefresh/layout/b/c;

    new-instance v0, Lcom/scwang/smartrefresh/layout/b/c;

    invoke-direct {v0, v6, v3, v2}, Lcom/scwang/smartrefresh/layout/b/c;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/scwang/smartrefresh/layout/b/c;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->a:Lcom/scwang/smartrefresh/layout/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->b:Lcom/scwang/smartrefresh/layout/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->d:Lcom/scwang/smartrefresh/layout/b/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->e:Lcom/scwang/smartrefresh/layout/b/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/scwang/smartrefresh/layout/b/c;->f:[Lcom/scwang/smartrefresh/layout/b/c;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scwang/smartrefresh/layout/b/c;->g:I

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/b/c;->h:Z

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/b/c;->i:Z

    return-void
.end method
