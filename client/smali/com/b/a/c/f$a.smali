.class public final enum Lcom/b/a/c/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/c/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/c/f$a;

.field public static final enum b:Lcom/b/a/c/f$a;

.field public static final enum c:Lcom/b/a/c/f$a;

.field public static final enum d:Lcom/b/a/c/f$a;

.field public static final enum e:Lcom/b/a/c/f$a;

.field public static final enum f:Lcom/b/a/c/f$a;

.field public static final enum g:Lcom/b/a/c/f$a;

.field public static final enum h:Lcom/b/a/c/f$a;

.field private static final synthetic j:[Lcom/b/a/c/f$a;


# instance fields
.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v3, v4}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->a:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v4, v3}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->b:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v5, v3}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->c:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "PNG_A"

    invoke-direct {v0, v1, v6, v4}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->d:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v7, v3}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->e:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "WEBP_A"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->f:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "WEBP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->g:Lcom/b/a/c/f$a;

    new-instance v0, Lcom/b/a/c/f$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/c/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/b/a/c/f$a;

    sget-object v1, Lcom/b/a/c/f$a;->a:Lcom/b/a/c/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/c/f$a;->b:Lcom/b/a/c/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/c/f$a;->c:Lcom/b/a/c/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/c/f$a;->d:Lcom/b/a/c/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/c/f$a;->e:Lcom/b/a/c/f$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/c/f$a;->f:Lcom/b/a/c/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/c/f$a;->g:Lcom/b/a/c/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/c/f$a;->h:Lcom/b/a/c/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/c/f$a;->j:[Lcom/b/a/c/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/b/a/c/f$a;->i:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/c/f$a;
    .locals 1

    const-class v0, Lcom/b/a/c/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/f$a;

    return-object v0
.end method

.method public static values()[Lcom/b/a/c/f$a;
    .locals 1

    sget-object v0, Lcom/b/a/c/f$a;->j:[Lcom/b/a/c/f$a;

    invoke-virtual {v0}, [Lcom/b/a/c/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/c/f$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/f$a;->i:Z

    return v0
.end method
