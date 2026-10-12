.class public final enum Lcom/a/a/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/g;

.field public static final enum b:Lcom/a/a/g;

.field public static final enum c:Lcom/a/a/g;

.field public static final enum d:Lcom/a/a/g;

.field private static final synthetic e:[Lcom/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/g;

    const-string v1, "CamelCase"

    invoke-direct {v0, v1, v2}, Lcom/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/g;

    const-string v1, "PascalCase"

    invoke-direct {v0, v1, v3}, Lcom/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/g;->b:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/g;

    const-string v1, "SnakeCase"

    invoke-direct {v0, v1, v4}, Lcom/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/g;->c:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/g;

    const-string v1, "KebabCase"

    invoke-direct {v0, v1, v5}, Lcom/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/g;->d:Lcom/a/a/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/g;

    sget-object v1, Lcom/a/a/g;->a:Lcom/a/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/g;->b:Lcom/a/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/g;->c:Lcom/a/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/g;->d:Lcom/a/a/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/g;->e:[Lcom/a/a/g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/g;
    .locals 1

    const-class v0, Lcom/a/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    return-object v0
.end method

.method public static values()[Lcom/a/a/g;
    .locals 1

    sget-object v0, Lcom/a/a/g;->e:[Lcom/a/a/g;

    invoke-virtual {v0}, [Lcom/a/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    sget-object v1, Lcom/a/a/g$1;->a:[I

    invoke-virtual {p0}, Lcom/a/a/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_2

    if-gt v2, v5, :cond_2

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v0, :cond_1

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_5

    if-gt v2, v5, :cond_5

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v0, :cond_4

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v2, v1, v0

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    aput-char v2, v1, v0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v2, v1, v0

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v1, v0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
