.class public final enum La/a/c/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/c/g;

.field public static final enum b:La/a/c/g;

.field public static final enum c:La/a/c/g;

.field public static final enum d:La/a/c/g;

.field private static final synthetic e:[La/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a/c/g;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, La/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/g;->d:La/a/c/g;

    new-instance v0, La/a/c/g;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, La/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/g;->c:La/a/c/g;

    new-instance v0, La/a/c/g;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, La/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/g;->b:La/a/c/g;

    new-instance v0, La/a/c/g;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, La/a/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/c/g;->a:La/a/c/g;

    const/4 v0, 0x4

    new-array v0, v0, [La/a/c/g;

    sget-object v1, La/a/c/g;->d:La/a/c/g;

    aput-object v1, v0, v2

    sget-object v1, La/a/c/g;->c:La/a/c/g;

    aput-object v1, v0, v3

    sget-object v1, La/a/c/g;->b:La/a/c/g;

    aput-object v1, v0, v4

    sget-object v1, La/a/c/g;->a:La/a/c/g;

    aput-object v1, v0, v5

    sput-object v0, La/a/c/g;->e:[La/a/c/g;

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

.method public static valueOf(Ljava/lang/String;)La/a/c/g;
    .locals 1

    const-class v0, La/a/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/c/g;

    return-object v0
.end method

.method public static values()[La/a/c/g;
    .locals 1

    sget-object v0, La/a/c/g;->e:[La/a/c/g;

    invoke-virtual {v0}, [La/a/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/c/g;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, La/a/c/g;->b:La/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, La/a/c/g;->c:La/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, La/a/c/g;->c:La/a/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, La/a/c/g;->b:La/a/c/g;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, La/a/c/g;->d:La/a/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
