.class public abstract Lcom/b/a/c/d/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/a/j$g;,
        Lcom/b/a/c/d/a/j$c;,
        Lcom/b/a/c/d/a/j$f;,
        Lcom/b/a/c/d/a/j$b;,
        Lcom/b/a/c/d/a/j$a;,
        Lcom/b/a/c/d/a/j$d;,
        Lcom/b/a/c/d/a/j$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/b/a/c/d/a/j;

.field public static final b:Lcom/b/a/c/d/a/j;

.field public static final c:Lcom/b/a/c/d/a/j;

.field public static final d:Lcom/b/a/c/d/a/j;

.field public static final e:Lcom/b/a/c/d/a/j;

.field public static final f:Lcom/b/a/c/d/a/j;

.field public static final g:Lcom/b/a/c/d/a/j;

.field public static final h:Lcom/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i",
            "<",
            "Lcom/b/a/c/d/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/b/a/c/d/a/j$e;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$e;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->a:Lcom/b/a/c/d/a/j;

    new-instance v0, Lcom/b/a/c/d/a/j$d;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$d;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->b:Lcom/b/a/c/d/a/j;

    new-instance v0, Lcom/b/a/c/d/a/j$a;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$a;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->c:Lcom/b/a/c/d/a/j;

    new-instance v0, Lcom/b/a/c/d/a/j$b;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$b;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->d:Lcom/b/a/c/d/a/j;

    new-instance v0, Lcom/b/a/c/d/a/j$c;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$c;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->e:Lcom/b/a/c/d/a/j;

    new-instance v0, Lcom/b/a/c/d/a/j$f;

    invoke-direct {v0}, Lcom/b/a/c/d/a/j$f;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/j;->f:Lcom/b/a/c/d/a/j;

    sget-object v0, Lcom/b/a/c/d/a/j;->b:Lcom/b/a/c/d/a/j;

    sput-object v0, Lcom/b/a/c/d/a/j;->g:Lcom/b/a/c/d/a/j;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lcom/b/a/c/d/a/j;->g:Lcom/b/a/c/d/a/j;

    invoke-static {v0, v1}, Lcom/b/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/c/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/d/a/j;->h:Lcom/b/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)F
.end method

.method public abstract b(IIII)Lcom/b/a/c/d/a/j$g;
.end method
