.class final enum Lcom/b/a/c/b/g$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/c/b/g$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/c/b/g$g;

.field public static final enum b:Lcom/b/a/c/b/g$g;

.field public static final enum c:Lcom/b/a/c/b/g$g;

.field public static final enum d:Lcom/b/a/c/b/g$g;

.field public static final enum e:Lcom/b/a/c/b/g$g;

.field public static final enum f:Lcom/b/a/c/b/g$g;

.field private static final synthetic g:[Lcom/b/a/c/b/g$g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->a:Lcom/b/a/c/b/g$g;

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "RESOURCE_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->b:Lcom/b/a/c/b/g$g;

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "DATA_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->c:Lcom/b/a/c/b/g$g;

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v6}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->d:Lcom/b/a/c/b/g$g;

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "ENCODE"

    invoke-direct {v0, v1, v7}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->e:Lcom/b/a/c/b/g$g;

    new-instance v0, Lcom/b/a/c/b/g$g;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/b/g$g;->f:Lcom/b/a/c/b/g$g;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/b/a/c/b/g$g;

    sget-object v1, Lcom/b/a/c/b/g$g;->a:Lcom/b/a/c/b/g$g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/c/b/g$g;->b:Lcom/b/a/c/b/g$g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/c/b/g$g;->c:Lcom/b/a/c/b/g$g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/c/b/g$g;->d:Lcom/b/a/c/b/g$g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/c/b/g$g;->e:Lcom/b/a/c/b/g$g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/c/b/g$g;->f:Lcom/b/a/c/b/g$g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/c/b/g$g;->g:[Lcom/b/a/c/b/g$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/c/b/g$g;
    .locals 1

    const-class v0, Lcom/b/a/c/b/g$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/g$g;

    return-object v0
.end method

.method public static values()[Lcom/b/a/c/b/g$g;
    .locals 1

    sget-object v0, Lcom/b/a/c/b/g$g;->g:[Lcom/b/a/c/b/g$g;

    invoke-virtual {v0}, [Lcom/b/a/c/b/g$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/c/b/g$g;

    return-object v0
.end method
