.class public final enum La/v;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/v;

.field public static final enum b:La/v;

.field public static final enum c:La/v;

.field public static final enum d:La/v;

.field private static final synthetic e:[La/v;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, La/v;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, La/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/v;->a:La/v;

    new-instance v0, La/v;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, La/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/v;->b:La/v;

    new-instance v0, La/v;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, La/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/v;->d:La/v;

    new-instance v0, La/v;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    invoke-direct {v0, v1, v6, v2}, La/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La/v;->c:La/v;

    const/4 v0, 0x4

    new-array v0, v0, [La/v;

    sget-object v1, La/v;->a:La/v;

    aput-object v1, v0, v3

    sget-object v1, La/v;->b:La/v;

    aput-object v1, v0, v4

    sget-object v1, La/v;->d:La/v;

    aput-object v1, v0, v5

    sget-object v1, La/v;->c:La/v;

    aput-object v1, v0, v6

    sput-object v0, La/v;->e:[La/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La/v;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)La/v;
    .locals 3

    sget-object v0, La/v;->a:La/v;

    iget-object v0, v0, La/v;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/v;->a:La/v;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, La/v;->b:La/v;

    iget-object v0, v0, La/v;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, La/v;->b:La/v;

    goto :goto_0

    :cond_1
    sget-object v0, La/v;->c:La/v;

    iget-object v0, v0, La/v;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, La/v;->c:La/v;

    goto :goto_0

    :cond_2
    sget-object v0, La/v;->d:La/v;

    iget-object v0, v0, La/v;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, La/v;->d:La/v;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)La/v;
    .locals 1

    const-class v0, La/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/v;

    return-object v0
.end method

.method public static values()[La/v;
    .locals 1

    sget-object v0, La/v;->e:[La/v;

    invoke-virtual {v0}, [La/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/v;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/v;->f:Ljava/lang/String;

    return-object v0
.end method
